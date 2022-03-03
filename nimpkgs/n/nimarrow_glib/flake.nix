{
  description = ''apache arrow and parquet c api bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimarrow_glib-master".type = "github";
  inputs."nimarrow_glib-master".owner = "riinr";
  inputs."nimarrow_glib-master".repo = "flake-nimble";
  inputs."nimarrow_glib-master".ref = "flake-pinning";
  inputs."nimarrow_glib-master".dir = "nimpkgs/n/nimarrow_glib/master";
  inputs."nimarrow_glib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimarrow_glib-v0_1_1".type = "github";
  inputs."nimarrow_glib-v0_1_1".owner = "riinr";
  inputs."nimarrow_glib-v0_1_1".repo = "flake-nimble";
  inputs."nimarrow_glib-v0_1_1".ref = "flake-pinning";
  inputs."nimarrow_glib-v0_1_1".dir = "nimpkgs/n/nimarrow_glib/v0_1_1";
  inputs."nimarrow_glib-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimarrow_glib-v0_1_2".type = "github";
  inputs."nimarrow_glib-v0_1_2".owner = "riinr";
  inputs."nimarrow_glib-v0_1_2".repo = "flake-nimble";
  inputs."nimarrow_glib-v0_1_2".ref = "flake-pinning";
  inputs."nimarrow_glib-v0_1_2".dir = "nimpkgs/n/nimarrow_glib/v0_1_2";
  inputs."nimarrow_glib-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimarrow_glib-v0_1_3".type = "github";
  inputs."nimarrow_glib-v0_1_3".owner = "riinr";
  inputs."nimarrow_glib-v0_1_3".repo = "flake-nimble";
  inputs."nimarrow_glib-v0_1_3".ref = "flake-pinning";
  inputs."nimarrow_glib-v0_1_3".dir = "nimpkgs/n/nimarrow_glib/v0_1_3";
  inputs."nimarrow_glib-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}