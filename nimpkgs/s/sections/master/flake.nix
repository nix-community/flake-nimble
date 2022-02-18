{
  description = ''`Section` macro with BDD aliases for testing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sections-master.flake = false;
  inputs.src-sections-master.type = "github";
  inputs.src-sections-master.owner = "c0ffeeartc";
  inputs.src-sections-master.repo = "nim-sections";
  inputs.src-sections-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sections-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sections-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sections-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}