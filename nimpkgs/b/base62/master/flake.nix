{
  description = ''Arbitrary base encoding-decoding functions, defaulting to Base-62.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-base62-master.flake = false;
  inputs.src-base62-master.type = "github";
  inputs.src-base62-master.owner = "singularperturbation";
  inputs.src-base62-master.repo = "base62-encode";
  inputs.src-base62-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-base62-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base62-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-base62-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}