{ config, lib, ...}: 
let
  # hasUrl = { url ? null, ...}: url != null;
  hasUrl = { name ? null, ...}: name == "about";
  nim-pkgs = builtins.filter hasUrl config.nim-pkgs;
  toInput = { url, ...}: 
    if lib.hasInfix "github.com" url
    then builtins.replaceStrings ["https://github.com/"] ["github:"] url
    else url;
  dirOf = { name, ...}: "${builtins.substring 0 1 name}/${name}";
  descrOf = { description, ...}:
    if builtins.isString description
    then description
    else "";
  toFlake = nim-pkg: {
    name = "/nimpkgs/${dirOf nim-pkg}/flake.nix";
    value = ''
      {
        description = ${"'"}'
          ${ descrOf nim-pkg}
        ${"'"}';
        inputs.src-${nim-pkg.name}.url = "${toInput nim-pkg}";
        inputs.src-${nim-pkg.name}.flake = false;
        outputs = inputs:
          let lib = import ../../lib.nix;
          in lib.mkOutput {
            inherit inputs;
            meta = ./meta.json;
          };
      }
    '';
  };
  flakes = map toFlake nim-pkgs;
  toMeta = nim-pkg: {
    name = "/nimpkgs/${dirOf nim-pkg}/meta.json";
    value = nim-pkg;
  };
  metas = map toMeta nim-pkgs;
  toRelInput = nim-pkg: ''inputs.${nim-pkg.name}.url = "path:${dirOf nim-pkg}";'';
  mainFlake = {
    name = "/nimpkgs/flake.nix";
    value = ''
      {
        inputs.dsf.url = "github:cruel-intentions/devshell-files";
        ${builtins.concatStringsSep "\n  " (map toRelInput nim-pkgs)}
        outputs = inputs:
          let lib = import ./lib.nix;
          in lib.mkMainOutput { inherit inputs; };
      }
    '';
  };
in
{
  imports = [ ./nim-pkgs-options.nix ];
  files.text = builtins.listToAttrs (flakes ++ [ mainFlake ]);
  files.json = builtins.listToAttrs metas;
}
