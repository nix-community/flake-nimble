{
  description = ''An implementation of the observer pattern'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimobserver-master".type = "github";
  inputs."nimobserver-master".owner = "riinr";
  inputs."nimobserver-master".repo = "flake-nimble";
  inputs."nimobserver-master".ref = "flake-pinning";
  inputs."nimobserver-master".dir = "nimpkgs/n/nimobserver/master";
  inputs."nimobserver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimobserver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimobserver-v0_1_0".type = "github";
  inputs."nimobserver-v0_1_0".owner = "riinr";
  inputs."nimobserver-v0_1_0".repo = "flake-nimble";
  inputs."nimobserver-v0_1_0".ref = "flake-pinning";
  inputs."nimobserver-v0_1_0".dir = "nimpkgs/n/nimobserver/v0_1_0";
  inputs."nimobserver-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimobserver-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimobserver-v0_1_1".type = "github";
  inputs."nimobserver-v0_1_1".owner = "riinr";
  inputs."nimobserver-v0_1_1".repo = "flake-nimble";
  inputs."nimobserver-v0_1_1".ref = "flake-pinning";
  inputs."nimobserver-v0_1_1".dir = "nimpkgs/n/nimobserver/v0_1_1";
  inputs."nimobserver-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimobserver-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}