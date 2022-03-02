{
  description = ''Converts a number into a specially formatted Unicode string'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-unicode_numbers-master.flake = false;
  inputs.src-unicode_numbers-master.type = "github";
  inputs.src-unicode_numbers-master.owner = "Aearnus";
  inputs.src-unicode_numbers-master.repo = "unicode_numbers";
  inputs.src-unicode_numbers-master.ref = "refs/heads/master";
  inputs.src-unicode_numbers-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unicode_numbers-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicode_numbers-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unicode_numbers-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}