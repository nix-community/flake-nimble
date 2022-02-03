{
  description = ''Web Technologies based Crossplatform GUI, modified wrapper for modified webview.h'';
  inputs."webgui-master".url = "path:./master";
  inputs."webgui-0_2_0".url = "path:./0_2_0";
  inputs."webgui-0_4_0".url = "path:./0_4_0";
  inputs."webgui-0_5_0".url = "path:./0_5_0";
  inputs."webgui-0_6_0".url = "path:./0_6_0";
  inputs."webgui-0_8_0".url = "path:./0_8_0";
  inputs."webgui-0_9_0".url = "path:./0_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}