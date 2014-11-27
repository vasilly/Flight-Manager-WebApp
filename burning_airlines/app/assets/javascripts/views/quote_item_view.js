// $('ul').on('click', function(){
// 	$(this).css();
// })

var App = App || {};

App.Views.QuoteItemView = Backbone.View.extend({

    tagName: 'li',

    events: {
        'click': 'changeColour',
        'click a': 'deleteQuote',
        // 'click a': 'anchorClicked',
        "click #delHighlights": "deleteHighlights",
        'click': 'selectQuote'
    },

    initialize: function() {
        this.listenTo(this.model, 'change', this.render);
    },

    hey: function() {
        console.log('sdafdsa');
    },

    render: function() {
        var template = $('#quoteItemView').html();
        var quoteItemView = Handlebars.compile(template);
        this.$el.html(quoteItemView( this.model.toJSON()) );
        return this;
    },

    deleteQuote: function(){
        event.preventDefault();
        console.log(this.model);
        this.model.destroy();
        this.remove();
    },

    selectQuote: function(){
        this.$el.parent().find('li').removeClass('highlight');
        this.$el.addClass('highlight');
        $('#quote').find('p').hide().html(this.model.get('body')).fadeIn();
    },

    changeColour: function() {
        // set highlight
        // this.$el.addClass('highlight');
        this.$el.toggleClass('highlight');
        $('#quote').find('p').html(this.model.body);
    },

    // anchorClicked: function(event) {
    //     event.preventDefault();
    //     // this.$el.css('text-decoration', 'line-through');
    //     this.$el.toggleClass('strikeThrough');
    //     // $('#quote').find('p').html(this.model.body);
    // },

    deleteHighlights: function() {
        $('#delHighlights').on('click', function() {
            $('.highlight').remove();
        });
        // get the index of the li you are clicking
        var index = $('#delHighlights').index(this);
        // this.model.get('#delHighlights').splice(index, 1);
        App.quotes.splice(index, 1);
        this.render();
        console.log(App.quotes);
    }
})
