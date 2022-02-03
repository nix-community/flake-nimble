{
  description = ''Extends stdlib make it easy on some case'';
  inputs."stdext-master".url = "path:./master";
  inputs."stdext-0_0_4".url = "path:./0_0_4";
  inputs."stdext-0_0_5".url = "path:./0_0_5";
  inputs."stdext-0_0_6".url = "path:./0_0_6";
  inputs."stdext-0_0_7".url = "path:./0_0_7";
  inputs."stdext-0_0_8".url = "path:./0_0_8";
  inputs."stdext-v0_0_10".url = "path:./v0_0_10";
  inputs."stdext-v0_0_11".url = "path:./v0_0_11";
  inputs."stdext-v0_0_12".url = "path:./v0_0_12";
  inputs."stdext-v0_0_4".url = "path:./v0_0_4";
  inputs."stdext-v0_0_8".url = "path:./v0_0_8";
  inputs."stdext-v0_0_9".url = "path:./v0_0_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}