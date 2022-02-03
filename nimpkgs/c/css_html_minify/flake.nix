{
  description = ''HTML & CSS Minify Lib & App based on Regexes & parallel MultiReplaces'';
  inputs."css_html_minify-master".url = "path:./master";
  inputs."css_html_minify-0_1_5".url = "path:./0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}