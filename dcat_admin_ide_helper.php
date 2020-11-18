<?php

/**
 * A helper file for Dcat Admin, to provide autocomplete information to your IDE
 *
 * This file should not be included in your code, only analyzed by your IDE!
 *
 * @author jqh <841324345@qq.com>
 */
namespace Dcat\Admin {
    use Illuminate\Support\Collection;

    /**
     * @property Grid\Column|Collection name
     * @property Grid\Column|Collection version
     * @property Grid\Column|Collection alias
     * @property Grid\Column|Collection authors
     * @property Grid\Column|Collection enable
     * @property Grid\Column|Collection imported
     * @property Grid\Column|Collection config
     * @property Grid\Column|Collection require
     * @property Grid\Column|Collection require_dev
     * @property Grid\Column|Collection created_at
     * @property Grid\Column|Collection icon
     * @property Grid\Column|Collection id
     * @property Grid\Column|Collection order
     * @property Grid\Column|Collection parent_id
     * @property Grid\Column|Collection updated_at
     * @property Grid\Column|Collection uri
     * @property Grid\Column|Collection input
     * @property Grid\Column|Collection ip
     * @property Grid\Column|Collection method
     * @property Grid\Column|Collection path
     * @property Grid\Column|Collection user_id
     * @property Grid\Column|Collection menu_id
     * @property Grid\Column|Collection permission_id
     * @property Grid\Column|Collection http_method
     * @property Grid\Column|Collection http_path
     * @property Grid\Column|Collection slug
     * @property Grid\Column|Collection role_id
     * @property Grid\Column|Collection avatar
     * @property Grid\Column|Collection password
     * @property Grid\Column|Collection remember_token
     * @property Grid\Column|Collection username
     * @property Grid\Column|Collection depth
     * @property Grid\Column|Collection is_show
     * @property Grid\Column|Collection pid
     * @property Grid\Column|Collection sort_by
     * @property Grid\Column|Collection status
     * @property Grid\Column|Collection url
     * @property Grid\Column|Collection connection
     * @property Grid\Column|Collection exception
     * @property Grid\Column|Collection failed_at
     * @property Grid\Column|Collection payload
     * @property Grid\Column|Collection queue
     * @property Grid\Column|Collection uuid
     * @property Grid\Column|Collection link_description
     * @property Grid\Column|Collection link_logo
     * @property Grid\Column|Collection link_name
     * @property Grid\Column|Collection link_url
     * @property Grid\Column|Collection type
     * @property Grid\Column|Collection author
     * @property Grid\Column|Collection content
     * @property Grid\Column|Collection deleted_at
     * @property Grid\Column|Collection html_content
     * @property Grid\Column|Collection published_at
     * @property Grid\Column|Collection seo_description
     * @property Grid\Column|Collection seo_keyword
     * @property Grid\Column|Collection summary
     * @property Grid\Column|Collection email
     * @property Grid\Column|Collection token
     * @property Grid\Column|Collection post_id
     * @property Grid\Column|Collection tag_id
     * @property Grid\Column|Collection category_id
     * @property Grid\Column|Collection cover
     * @property Grid\Column|Collection is_hot
     * @property Grid\Column|Collection is_recommend
     * @property Grid\Column|Collection setting_key
     * @property Grid\Column|Collection setting_val
     * @property Grid\Column|Collection email_verified_at
     *
     * @method Grid\Column|Collection name(string $label = null)
     * @method Grid\Column|Collection version(string $label = null)
     * @method Grid\Column|Collection alias(string $label = null)
     * @method Grid\Column|Collection authors(string $label = null)
     * @method Grid\Column|Collection enable(string $label = null)
     * @method Grid\Column|Collection imported(string $label = null)
     * @method Grid\Column|Collection config(string $label = null)
     * @method Grid\Column|Collection require(string $label = null)
     * @method Grid\Column|Collection require_dev(string $label = null)
     * @method Grid\Column|Collection created_at(string $label = null)
     * @method Grid\Column|Collection icon(string $label = null)
     * @method Grid\Column|Collection id(string $label = null)
     * @method Grid\Column|Collection order(string $label = null)
     * @method Grid\Column|Collection parent_id(string $label = null)
     * @method Grid\Column|Collection updated_at(string $label = null)
     * @method Grid\Column|Collection uri(string $label = null)
     * @method Grid\Column|Collection input(string $label = null)
     * @method Grid\Column|Collection ip(string $label = null)
     * @method Grid\Column|Collection method(string $label = null)
     * @method Grid\Column|Collection path(string $label = null)
     * @method Grid\Column|Collection user_id(string $label = null)
     * @method Grid\Column|Collection menu_id(string $label = null)
     * @method Grid\Column|Collection permission_id(string $label = null)
     * @method Grid\Column|Collection http_method(string $label = null)
     * @method Grid\Column|Collection http_path(string $label = null)
     * @method Grid\Column|Collection slug(string $label = null)
     * @method Grid\Column|Collection role_id(string $label = null)
     * @method Grid\Column|Collection avatar(string $label = null)
     * @method Grid\Column|Collection password(string $label = null)
     * @method Grid\Column|Collection remember_token(string $label = null)
     * @method Grid\Column|Collection username(string $label = null)
     * @method Grid\Column|Collection depth(string $label = null)
     * @method Grid\Column|Collection is_show(string $label = null)
     * @method Grid\Column|Collection pid(string $label = null)
     * @method Grid\Column|Collection sort_by(string $label = null)
     * @method Grid\Column|Collection status(string $label = null)
     * @method Grid\Column|Collection url(string $label = null)
     * @method Grid\Column|Collection connection(string $label = null)
     * @method Grid\Column|Collection exception(string $label = null)
     * @method Grid\Column|Collection failed_at(string $label = null)
     * @method Grid\Column|Collection payload(string $label = null)
     * @method Grid\Column|Collection queue(string $label = null)
     * @method Grid\Column|Collection uuid(string $label = null)
     * @method Grid\Column|Collection link_description(string $label = null)
     * @method Grid\Column|Collection link_logo(string $label = null)
     * @method Grid\Column|Collection link_name(string $label = null)
     * @method Grid\Column|Collection link_url(string $label = null)
     * @method Grid\Column|Collection type(string $label = null)
     * @method Grid\Column|Collection author(string $label = null)
     * @method Grid\Column|Collection content(string $label = null)
     * @method Grid\Column|Collection deleted_at(string $label = null)
     * @method Grid\Column|Collection html_content(string $label = null)
     * @method Grid\Column|Collection published_at(string $label = null)
     * @method Grid\Column|Collection seo_description(string $label = null)
     * @method Grid\Column|Collection seo_keyword(string $label = null)
     * @method Grid\Column|Collection summary(string $label = null)
     * @method Grid\Column|Collection email(string $label = null)
     * @method Grid\Column|Collection token(string $label = null)
     * @method Grid\Column|Collection post_id(string $label = null)
     * @method Grid\Column|Collection tag_id(string $label = null)
     * @method Grid\Column|Collection category_id(string $label = null)
     * @method Grid\Column|Collection cover(string $label = null)
     * @method Grid\Column|Collection is_hot(string $label = null)
     * @method Grid\Column|Collection is_recommend(string $label = null)
     * @method Grid\Column|Collection setting_key(string $label = null)
     * @method Grid\Column|Collection setting_val(string $label = null)
     * @method Grid\Column|Collection email_verified_at(string $label = null)
     */
    class Grid {}

    class MiniGrid extends Grid {}

    /**
     * @property Show\Field|Collection name
     * @property Show\Field|Collection version
     * @property Show\Field|Collection alias
     * @property Show\Field|Collection authors
     * @property Show\Field|Collection enable
     * @property Show\Field|Collection imported
     * @property Show\Field|Collection config
     * @property Show\Field|Collection require
     * @property Show\Field|Collection require_dev
     * @property Show\Field|Collection created_at
     * @property Show\Field|Collection icon
     * @property Show\Field|Collection id
     * @property Show\Field|Collection order
     * @property Show\Field|Collection parent_id
     * @property Show\Field|Collection updated_at
     * @property Show\Field|Collection uri
     * @property Show\Field|Collection input
     * @property Show\Field|Collection ip
     * @property Show\Field|Collection method
     * @property Show\Field|Collection path
     * @property Show\Field|Collection user_id
     * @property Show\Field|Collection menu_id
     * @property Show\Field|Collection permission_id
     * @property Show\Field|Collection http_method
     * @property Show\Field|Collection http_path
     * @property Show\Field|Collection slug
     * @property Show\Field|Collection role_id
     * @property Show\Field|Collection avatar
     * @property Show\Field|Collection password
     * @property Show\Field|Collection remember_token
     * @property Show\Field|Collection username
     * @property Show\Field|Collection depth
     * @property Show\Field|Collection is_show
     * @property Show\Field|Collection pid
     * @property Show\Field|Collection sort_by
     * @property Show\Field|Collection status
     * @property Show\Field|Collection url
     * @property Show\Field|Collection connection
     * @property Show\Field|Collection exception
     * @property Show\Field|Collection failed_at
     * @property Show\Field|Collection payload
     * @property Show\Field|Collection queue
     * @property Show\Field|Collection uuid
     * @property Show\Field|Collection link_description
     * @property Show\Field|Collection link_logo
     * @property Show\Field|Collection link_name
     * @property Show\Field|Collection link_url
     * @property Show\Field|Collection type
     * @property Show\Field|Collection author
     * @property Show\Field|Collection content
     * @property Show\Field|Collection deleted_at
     * @property Show\Field|Collection html_content
     * @property Show\Field|Collection published_at
     * @property Show\Field|Collection seo_description
     * @property Show\Field|Collection seo_keyword
     * @property Show\Field|Collection summary
     * @property Show\Field|Collection email
     * @property Show\Field|Collection token
     * @property Show\Field|Collection post_id
     * @property Show\Field|Collection tag_id
     * @property Show\Field|Collection category_id
     * @property Show\Field|Collection cover
     * @property Show\Field|Collection is_hot
     * @property Show\Field|Collection is_recommend
     * @property Show\Field|Collection setting_key
     * @property Show\Field|Collection setting_val
     * @property Show\Field|Collection email_verified_at
     *
     * @method Show\Field|Collection name(string $label = null)
     * @method Show\Field|Collection version(string $label = null)
     * @method Show\Field|Collection alias(string $label = null)
     * @method Show\Field|Collection authors(string $label = null)
     * @method Show\Field|Collection enable(string $label = null)
     * @method Show\Field|Collection imported(string $label = null)
     * @method Show\Field|Collection config(string $label = null)
     * @method Show\Field|Collection require(string $label = null)
     * @method Show\Field|Collection require_dev(string $label = null)
     * @method Show\Field|Collection created_at(string $label = null)
     * @method Show\Field|Collection icon(string $label = null)
     * @method Show\Field|Collection id(string $label = null)
     * @method Show\Field|Collection order(string $label = null)
     * @method Show\Field|Collection parent_id(string $label = null)
     * @method Show\Field|Collection updated_at(string $label = null)
     * @method Show\Field|Collection uri(string $label = null)
     * @method Show\Field|Collection input(string $label = null)
     * @method Show\Field|Collection ip(string $label = null)
     * @method Show\Field|Collection method(string $label = null)
     * @method Show\Field|Collection path(string $label = null)
     * @method Show\Field|Collection user_id(string $label = null)
     * @method Show\Field|Collection menu_id(string $label = null)
     * @method Show\Field|Collection permission_id(string $label = null)
     * @method Show\Field|Collection http_method(string $label = null)
     * @method Show\Field|Collection http_path(string $label = null)
     * @method Show\Field|Collection slug(string $label = null)
     * @method Show\Field|Collection role_id(string $label = null)
     * @method Show\Field|Collection avatar(string $label = null)
     * @method Show\Field|Collection password(string $label = null)
     * @method Show\Field|Collection remember_token(string $label = null)
     * @method Show\Field|Collection username(string $label = null)
     * @method Show\Field|Collection depth(string $label = null)
     * @method Show\Field|Collection is_show(string $label = null)
     * @method Show\Field|Collection pid(string $label = null)
     * @method Show\Field|Collection sort_by(string $label = null)
     * @method Show\Field|Collection status(string $label = null)
     * @method Show\Field|Collection url(string $label = null)
     * @method Show\Field|Collection connection(string $label = null)
     * @method Show\Field|Collection exception(string $label = null)
     * @method Show\Field|Collection failed_at(string $label = null)
     * @method Show\Field|Collection payload(string $label = null)
     * @method Show\Field|Collection queue(string $label = null)
     * @method Show\Field|Collection uuid(string $label = null)
     * @method Show\Field|Collection link_description(string $label = null)
     * @method Show\Field|Collection link_logo(string $label = null)
     * @method Show\Field|Collection link_name(string $label = null)
     * @method Show\Field|Collection link_url(string $label = null)
     * @method Show\Field|Collection type(string $label = null)
     * @method Show\Field|Collection author(string $label = null)
     * @method Show\Field|Collection content(string $label = null)
     * @method Show\Field|Collection deleted_at(string $label = null)
     * @method Show\Field|Collection html_content(string $label = null)
     * @method Show\Field|Collection published_at(string $label = null)
     * @method Show\Field|Collection seo_description(string $label = null)
     * @method Show\Field|Collection seo_keyword(string $label = null)
     * @method Show\Field|Collection summary(string $label = null)
     * @method Show\Field|Collection email(string $label = null)
     * @method Show\Field|Collection token(string $label = null)
     * @method Show\Field|Collection post_id(string $label = null)
     * @method Show\Field|Collection tag_id(string $label = null)
     * @method Show\Field|Collection category_id(string $label = null)
     * @method Show\Field|Collection cover(string $label = null)
     * @method Show\Field|Collection is_hot(string $label = null)
     * @method Show\Field|Collection is_recommend(string $label = null)
     * @method Show\Field|Collection setting_key(string $label = null)
     * @method Show\Field|Collection setting_val(string $label = null)
     * @method Show\Field|Collection email_verified_at(string $label = null)
     */
    class Show {}

    /**
     
     */
    class Form {}

}

namespace Dcat\Admin\Grid {
    /**
     
     */
    class Column {}

    /**
     
     */
    class Filter {}
}

namespace Dcat\Admin\Show {
    /**
     
     */
    class Field {}
}
