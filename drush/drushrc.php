<?php
if (is_dir('/Users/kkedrovsky')) {
  $_SERVER['DRUPAL_CONFIG'] = '/Users/kkedrovsky/drupal-config/';
  $options['dump-dir'] = '/Users/kkedrovsky/drush-dump-dir';
} elseif (is_dir('/home/karl')) {
  $_SERVER['DRUPAL_CONFIG'] = '/home/karl/drupal-config/';
  $options['dump-dir'] = '/home/karl/drush-dump-dir';
}
