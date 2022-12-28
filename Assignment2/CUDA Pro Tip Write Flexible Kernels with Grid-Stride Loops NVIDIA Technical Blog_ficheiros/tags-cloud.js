(function ($) {
  $(document).ready(function () {
    if (!document.getElementById('tags-filter')) {
      return;
    }

    function decodeHtmlChars(text){
      let el = document.createElement('textarea');
      el.innerHTML = text;
      return el.firstChild.nodeValue;
    }

    let selectizeInstance = null;
    let selectizeInstanceMobile = null;
    const typeCategory = 'category';
    const typeTag = 'tag';

    let store = {
      baseURL: '',
      categoriesEndpointURL: '',
      categoriesEndpointURLDefault: '',
      tagsEndpointURL: '',
      tagsEndpointURLDefault: '',
      items: [],
      selectedItems: [],
      isLoaded: false
    };

    const eventBus = new Vue();

    if ($('input.js-tags-cloud-input').length) {
      $('input.js-tags-cloud-input').attr('placeholder', $('#tags-filter').attr('placeholder'));

      let mobileFilterApp = new Vue({
        el: '#js-mobile-tags-filter-widget',
        data: store,
        computed: {
          getPredefinedItems: function () {
            return this.items.filter((item) => {
              return item.isPredefined === true;
            });
          },
          getSelectedItems() {
            return this.selectedItems.map(item => item.uuid);
          }
        },
        methods: {
          getItem(type, id) {
            return this.items.reduce((acc, item) => {
              if (item.type === type && item.id === id) {
                acc = item;
              }
              return acc;
            });
          },
          buildOption(item) {
            return {value: item.uuid, text: decodeHtmlChars(item.name), name: decodeHtmlChars(item.name)};
          },
          calculateSelectedItems(){
            this.selectedItems = this.items.filter((i) => {
              return selectizeInstanceMobile.items.includes(i.uuid);
            });
          },
          handleClickOnButton(id, type) {
            $('#js-tags-filter-widget button[data-tag_id="' + id + '"]').trigger('click');

            let clickedItem = this.getItem(type, id);
            clickedItem.is_disabled = true;

            let selectizeOption = this.buildOption(clickedItem);
            selectizeInstanceMobile.addOption(selectizeOption);

            selectizeInstanceMobile.addItem(clickedItem.uuid);
          },

          handleFilterChange() {
            this.calculateSelectedItems();
            this.getSelectedItems.forEach((uuid => {
              selectizeInstance.addItem(uuid);
            }));
          },
          initFilter() {
            let tagsFilterElement = jQuery('input.js-tags-cloud-input');
            tagsFilterElement.selectize({
              plugins: ['remove_button'],
              delimiter: ",",
              persist: false,
              sortField: [
                {
                  field: 'name',
                  direction: 'asc'
                },
                {
                  field: '$score'
                }
              ]
            });
            selectizeInstanceMobile = jQuery('input.js-tags-cloud-input')[0].selectize;

            let self = this;

            tagsFilterElement.on('change', this.handleFilterChange);
            selectizeInstanceMobile.on('item_remove', function (value) {
              let removedItem = self.items.reduce((acc, item) => {
                if (item.uuid === value){
                  acc = item;
                }
                return acc;
              });

              let selectizeOption = self.buildOption(removedItem);
              selectizeInstanceMobile.addOption(selectizeOption);
              selectizeInstance.removeItem(value);
            });
          },
          initEventListeners() {
            eventBus.$on('item-stored', (item) => {
              let tag = this.getItem(item.type, item.id);
              let opt = this.buildOption(tag);
              selectizeInstanceMobile.addOption(opt);
            })
          }
        },
        mounted() {
          this.initFilter();
          this.initEventListeners();
        }
      });
    }

    let tagsFilterApp = new Vue({
      el: '#js-tags-filter-widget',
      data: store,
      filters:{
        tagName: function (value) {
          if (!value) {
            return '';
          }
          let tagNameParts = value.toString().split('/');
          return decodeHtmlChars(tagNameParts[0]);
        }
      },
      computed: {
        getPredefinedItems: function () {
          return this.items.filter((item) => {
            return item.isPredefined === true;
          });
        },
        getSelectedItems() {
          return this.selectedItems.map(item => item.uuid);
        }
      },
      methods: {
        buildRoutes: function () {
          this.baseURL = document.getElementById('js-tags-cloud__tags').dataset['baseurl'];
          const tagsAPIEndpoint = '/wp-json/wp/v2/tags?per_page=100&hide_empty=1&orderby=name&order=asc';
          const tagsCloudTagsElement = document.getElementById('js-tags-cloud__tags');

          this.tagsEndpointURL = this.baseURL + tagsAPIEndpoint;
          this.tagsEndpointURLDefault = this.baseURL + tagsAPIEndpoint;
          let predefinedTags = tagsCloudTagsElement.dataset['tags'];
          if (predefinedTags) {
            this.tagsEndpointURL = this.baseURL + tagsAPIEndpoint +'&include=' + predefinedTags;
          }

          const categoriesAPIEndpoint = '/wp-json/wp/v2/categories?per_page=100';
          this.categoriesEndpointURL = this.baseURL + categoriesAPIEndpoint;
          this.categoriesEndpointURLDefault = this.baseURL + categoriesAPIEndpoint;
          const predefinedCategories = tagsCloudTagsElement.dataset['categories'];
          if (predefinedCategories) {
            this.categoriesEndpointURL = this.baseURL + categoriesAPIEndpoint + '&include=' + predefinedCategories;
          }
        },
        handleClickOnButton(id, type) {
          let clickedItem = this.getItem(type, id);
          clickedItem.is_disabled = true;

          let selectizeOption = this.buildOption(clickedItem);
          selectizeInstance.addOption(selectizeOption);

          selectizeInstance.addItem(clickedItem.uuid);
        },
        buildOption(item) {
          return {value: item.uuid, text: decodeHtmlChars(item.name), name: decodeHtmlChars(item.name)};
        },
        storeItem: function (type, itemID, item) {
          let id = type + '__' + itemID;
          item.type = type;
          item.uuid = id;
          item.is_disabled = false;
          item.related_items_total = 0;
          // Store only unique items.
          if (this.items.filter(i => i.uuid === id).length === 0) {
            this.items.push(item);
            eventBus.$emit('item-stored', item);
          }
        },
        getItem(type, id) {
          return this.items.reduce((acc, item) => {
            if (item.type === type && item.id === id) {
              acc = item;
            }
            return acc;
          });
        },
        calculateSelectedItems () {
          this.selectedItems = this.items.filter((i) => {
            return selectizeInstance.items.includes(i.uuid);
          });
        },
        storeSelectedItems() {
          window.document.nvTagsCloudTags = this.selectedItems.filter(item => item.type === typeTag)
            .map(item => item.id);

          window.document.nvTagsCloudCategories = this.selectedItems.filter(item => item.type === typeCategory)
            .map(item => item.id);
        },
        handleFilterChange() {
          this.calculateSelectedItems();

          let tagsSlugList = this.selectedItems.filter(selectedItem => selectedItem.type === typeTag)
            .map(selectedItem => {
              return selectedItem.slug;
            });

          let categoriesSlugList = this.selectedItems.filter(selectedItem => selectedItem.type === typeCategory)
            .map(selectedItem => {
              return selectedItem.slug;
            });

          let url = new URL(window.location);
          url.searchParams.set('tags', tagsSlugList);
          url.searchParams.set('categories', categoriesSlugList);
          window.history.pushState({}, '', decodeURIComponent(url.toString()));

          // Handle redirect form post page.
          const isPostPage = window.is_post_page || false;
          if (isPostPage) {
            let href = `${window.nv_homepage_url}?r=1`

            if (url.searchParams.has('tags')) {
              href = `${href}&tags=${url.searchParams.get('tags')}`;
            }

            if (url.searchParams.has('categories')) {
              href = `${href}&categories=${url.searchParams.get('categories')}`;
            }

            location.href = href;
            return;
          }

          this.refreshPostsList();
        },
        initFilter() {
          let tagsFilterElement = $('#tags-filter');
          tagsFilterElement.selectize({
            plugins: ['remove_button'],
            delimiter: ",",
            persist: false,
            sortField: [
              {
                field: 'name',
                direction: 'asc'
              },
              {
                field: '$score'
              }
            ]
          });
          selectizeInstance = jQuery('#tags-filter')[0].selectize;

          let self = this;

          tagsFilterElement.on('change', this.handleFilterChange);

          selectizeInstance.on('item_remove', function (value) {
            let removedItem = self.items.reduce((acc, item) => {
              if (item.uuid === value){
                acc = item;
              }
              return acc;
            });

            let selectizeOption = self.buildOption(removedItem);
            selectizeInstance.addOption(selectizeOption);
            self.filterAllowedOptions();
          });
        },
        refreshPostsList() {
          this.storeSelectedItems();

          this.updateRelatedPostCounter();

          window.document.nvInfiniteScrollReload = true;

          // Destroy old loader container.
          $('.posts__container').infiniteScroll('destroy');
          $('#posts__container-wrapper')
            .html('')
            .trigger('nv-refresh-scroll');
        },
        fetchCategoriesAndTags () {
          fetch(this.categoriesEndpointURL)
            .then(response => response.json())
            .then(response => {
              response.forEach((item) => {
                item.isPredefined = true
                this.storeItem(typeCategory, item.id, item)
                const category = this.getItem(typeCategory, item.id)
                const opt = this.buildOption(category)
                selectizeInstance.addOption(opt)
              })
            })
            .then(() => fetch(this.tagsEndpointURL))
            .then(response => response.json())
            .then((response) => {
              response.forEach((item) => {
                item.isPredefined = true
                this.storeItem(typeTag, item.id, item)
                let tag = this.getItem(typeTag, item.id)
                let opt = this.buildOption(tag)
                selectizeInstance.addOption(opt)
              })

              this.isLoaded = true
              document.getElementById('js-tags-cloud__tags').style.display = 'block'
            })
            .then(() => fetch(this.categoriesEndpointURLDefault)).then(response => response.json())
            .then((response) => {
              response.forEach((item) => {
                this.storeItem(typeCategory, item.id, item)

                let category = this.getItem(typeCategory, item.id)
                let selectizeOption = this.buildOption(category)
                selectizeInstance.addOption(selectizeOption)
              })
            })
            .then(() => fetch(this.tagsEndpointURLDefault))
            .then((response) => {
              const tagsPages = response.headers.get('x-wp-totalpages')

              let urls = []
              for (let i = 1; i <= tagsPages; i++) {
                urls.push(this.tagsEndpointURLDefault + '&page=' + i)
              }

              let requests = urls.map(url => fetch(url))
              Promise.all(requests)
                .then(responses => Promise.all(responses.map(r => r.json())))
                .then(responses => {
                  responses.forEach((response) => {
                    response.forEach((item) => {
                      this.storeItem(typeTag, item.id, item)

                      let tag = this.getItem(typeTag, item.id)

                      let selectizeOption = this.buildOption(tag)
                      selectizeInstance.addOption(selectizeOption)
                    })
                  })
                  this.filterAllowedOptions()
                  this.preselectItems()
                })
            })
        },
        preselectItems() {
          const currentURL = new URL(window.location);
          if (currentURL.searchParams.has('tags')) {
            let existingTagSlugs = currentURL.searchParams.get('tags').split(',');
            let selectedTags = this.items.filter(i => i.type === typeTag && existingTagSlugs.includes(i.slug));
            selectedTags.forEach(tag => {
              selectizeInstance.addItem(tag.uuid, true);
            });
          }

          if (currentURL.searchParams.has('categories')) {
            let existingCategoriesSlugs = currentURL.searchParams.get('categories').split(',');
            let selectedCategories = this.items.filter(i => i.type === typeCategory && existingCategoriesSlugs.includes(i.slug));
            selectedCategories.forEach(tag => {
              tag.disabled = true;
              selectizeInstance.addItem(tag.uuid, true);
            });
          }

          this.calculateSelectedItems();
          this.storeSelectedItems();

          this.updateRelatedPostCounter();
        },
        updateRelatedPostCounter() {
          if (this.selectedItems.length === 0) {
            this.items.filter(item => item.isPredefined).forEach(item => {
              item.related_items_total = 0;
              item.is_disabled = false;
            });
            return;
          }

          this.items.filter(item => item.isPredefined).forEach(item => {
            item.is_disabled = true;
          });

          let selectedTags = this.selectedItems.filter(item => item.type === typeTag).map(item => item.id);
          let allTags = this.items.filter(item => item.type === typeTag && item.isPredefined).map(item => item.id)
          let selectedCategories = this.selectedItems.filter(item => item.type === typeCategory).map(item => item.id);

          let url = this.baseURL + '/wp-admin/admin-ajax.php?action=get_available_tags_for_tags_cloud';
          url += '&all_tags=' + allTags.join(',');
          url += '&selected_tags=' + selectedTags.join(',');
          url += '&categories=' + selectedCategories.join(',');

          fetch(url)
            .then(response => response.json())
            .then(json => {
              Object.entries(json).forEach(element => {
                let tagID, counter;
                [tagID, counter] = element;
                tagID = parseInt(tagID);
                counter = parseInt(counter);
                let item = this.getItem(typeTag, tagID)
                item.related_items_total = counter
                item.is_disabled = counter <= 0
              })
            })
            .catch(e => console.log(e))
        },
        filterAllowedOptions() {
          const categories = this.items.filter(i => i.type === typeCategory).map(i => i.name);
          const tags = this.items.filter(i => i.type === typeTag);
          tags.forEach((tag) => {
            if (categories.includes(tag.name)) {
              selectizeInstance.removeOption(tag.uuid);
            }
          });
          selectizeInstance.refreshOptions(false);
        }
      },
      mounted() {
        this.initFilter();
        this.buildRoutes();

        this.fetchCategoriesAndTags();
      }
    });
  });
})(jQuery);
