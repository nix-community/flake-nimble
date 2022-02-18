{
  description = ''Hashing/Digest collection in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-shimsham-master.flake = false;
  inputs.src-shimsham-master.type = "github";
  inputs.src-shimsham-master.owner = "apense";
  inputs.src-shimsham-master.repo = "shimsham";
  inputs.src-shimsham-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shimsham-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shimsham-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shimsham-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}