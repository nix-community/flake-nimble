{
  description = ''A fork of John Novak (john@johnnovak.net)'s illwill package that is less safe numbers wise'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-illwill_unsafe-master.flake = false;
  inputs.src-illwill_unsafe-master.type = "github";
  inputs.src-illwill_unsafe-master.owner = "matthewjcavalier";
  inputs.src-illwill_unsafe-master.repo = "illwill_unsafe";
  inputs.src-illwill_unsafe-master.ref = "refs/heads/master";
  inputs.src-illwill_unsafe-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-illwill_unsafe-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-illwill_unsafe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-illwill_unsafe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}