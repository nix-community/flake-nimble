{
  description = ''Nim / Python / C library to run webview with HTML/JS as UI'';
  inputs."nimview-main".url = "path:./main";
  inputs."nimview-0_2_0".url = "path:./0_2_0";
  inputs."nimview-0_2_1".url = "path:./0_2_1";
  inputs."nimview-0_2_2".url = "path:./0_2_2";
  inputs."nimview-0_2_3".url = "path:./0_2_3";
  inputs."nimview-0_3_0".url = "path:./0_3_0";
  inputs."nimview-0_3_1".url = "path:./0_3_1";
  inputs."nimview-0_3_2".url = "path:./0_3_2";
  inputs."nimview-0_3_3".url = "path:./0_3_3";
  inputs."nimview-0_4_0".url = "path:./0_4_0";
  inputs."nimview-0_4_1".url = "path:./0_4_1";
  inputs."nimview-0_4_2".url = "path:./0_4_2";
  inputs."nimview-v0_1_1".url = "path:./v0_1_1";
  inputs."nimview-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}