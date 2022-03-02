{
  description = ''Conversion between integers and Roman numerals'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-romans-master.flake = false;
  inputs.src-romans-master.type = "github";
  inputs.src-romans-master.owner = "lcrees";
  inputs.src-romans-master.repo = "romans";
  inputs.src-romans-master.ref = "refs/heads/master";
  inputs.src-romans-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-romans-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-romans-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-romans-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}