/*globals define */
(function (root, factory) {
    'use strict';

    var nsManager = new root.Perimeter.NamespaceManager(),
        <namespace> = nsManager.getNamespace('<namespace>');

    if (typeof define === 'function' && define.amd) {
        define([<dependency>], factory);
    } else {
        <namespace>.<constructor> = factory(root.<dependency>);
    }
}(this, function (<dependency>) {
    'use strict';
}));
