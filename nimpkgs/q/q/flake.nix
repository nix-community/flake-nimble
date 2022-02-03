{
  description = ''Simple package for query HTML/XML elements using a CSS3 or jQuery-like selector syntax'';
  inputs."q-master".url = "path:./master";
  inputs."q-0_0_2".url = "path:./0_0_2";
  inputs."q-0_0_3".url = "path:./0_0_3";
  inputs."q-0_0_4".url = "path:./0_0_4";
  inputs."q-0_0_5".url = "path:./0_0_5";
  inputs."q-0_0_6".url = "path:./0_0_6";
  inputs."q-0_0_7".url = "path:./0_0_7";
  inputs."q-0_0_8".url = "path:./0_0_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}