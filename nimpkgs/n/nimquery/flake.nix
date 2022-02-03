{
  description = ''Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector'';
  inputs."nimquery-master".url = "path:./master";
  inputs."nimquery-v1_0_0".url = "path:./v1_0_0";
  inputs."nimquery-v1_0_1".url = "path:./v1_0_1";
  inputs."nimquery-v1_0_2".url = "path:./v1_0_2";
  inputs."nimquery-v1_1_0".url = "path:./v1_1_0";
  inputs."nimquery-v1_1_1".url = "path:./v1_1_1";
  inputs."nimquery-v1_1_2".url = "path:./v1_1_2";
  inputs."nimquery-v1_2_0".url = "path:./v1_2_0";
  inputs."nimquery-v1_2_1".url = "path:./v1_2_1";
  inputs."nimquery-v1_2_2".url = "path:./v1_2_2";
  inputs."nimquery-v1_2_3".url = "path:./v1_2_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}