{ options, lib, ...}: 
let
  opts = attrs: { options = builtins.mapAttrs (n: lib.mkOption) attrs; };
  type = attrs: lib.types.submodule (opts attrs);
  alias.default = null;
  alias.example = "another-pkg";
  alias.type = lib.types.nullOr lib.types.nonEmptyStr;
  alias.description = ''Name of another package it refers to'';
  description.default = null;
  description.example = "Nim package for something";
  description.type = lib.types.nullOr lib.types.nonEmptyStr;
  description.description = ''Description of nim package'';
  doc.default = null;
  doc.example = "https://github.com/jiiihpeeh/xlsxio-nim";
  doc.type = lib.types.nullOr lib.types.nonEmptyStr;
  doc.description = ''Web site for this package documentation'';
  name.example = "awesome-nim-package";
  name.type = lib.types.nonEmptyStr;
  name.description = ''Name of nim package'';
  method.example = "git";
  method.type = lib.types.enum ["git" "hg"];
  method.description = ''Repository type'';
  tags.default = [];
  tags.example = ["xlsx"];
  tags.type = lib.types.listOf lib.types.str;
  tags.description = ''Tags for search and group pourposes'';
  url.default = null;
  url.example = "https://github.com/jiiihpeeh/xlsxio-nim";
  url.type = lib.types.nullOr lib.types.nonEmptyStr;
  url.description = ''URL of nim package'';
  license.example = "Unlincense";
  license.type = lib.types.nonEmptyStr;
  license.description = ''License of this package'';
  web.default = null;
  web.example = "https://github.com/jiiihpeeh/xlsxio-nim";
  web.type = lib.types.nullOr lib.types.nonEmptyStr;
  web.description = ''Web site for this package'';
  nim-pkg = type { 
    inherit alias name description url method tags license web doc;
  };
  nim-pkgs.default = [];
  nim-pkgs.example = [];
  nim-pkgs.type = lib.types.listOf nim-pkg;
  nim-pkgs.description = "List ofr nim pkg";
in opts { inherit nim-pkgs; }
