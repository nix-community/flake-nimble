{
  description = ''A consistent markup language'';
  inputs."xidoc-master".url = "path:./master";
  inputs."xidoc-2021_10_20".url = "path:./2021_10_20";
  inputs."xidoc-2021_10_21".url = "path:./2021_10_21";
  inputs."xidoc-2021_10_22".url = "path:./2021_10_22";
  inputs."xidoc-2021_10_23".url = "path:./2021_10_23";
  inputs."xidoc-2021_10_24".url = "path:./2021_10_24";
  inputs."xidoc-2021_10_26".url = "path:./2021_10_26";
  inputs."xidoc-2021_11_13".url = "path:./2021_11_13";
  inputs."xidoc-2021_11_15".url = "path:./2021_11_15";
  inputs."xidoc-2021_11_16".url = "path:./2021_11_16";
  inputs."xidoc-2021_11_20".url = "path:./2021_11_20";
  inputs."xidoc-2021_11_21".url = "path:./2021_11_21";
  inputs."xidoc-2021_11_23".url = "path:./2021_11_23";
  inputs."xidoc-2021_11_25".url = "path:./2021_11_25";
  inputs."xidoc-2021_11_27".url = "path:./2021_11_27";
  inputs."xidoc-2021_11_8".url = "path:./2021_11_8";
  inputs."xidoc-2021_12_19".url = "path:./2021_12_19";
  inputs."xidoc-2022_1_30".url = "path:./2022_1_30";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}