{
  description = ''Luhn's Algorithm implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-luhny-master.flake = false;
  inputs.src-luhny-master.type = "github";
  inputs.src-luhny-master.owner = "sigmapie8";
  inputs.src-luhny-master.repo = "luhny";
  inputs.src-luhny-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-luhny-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-luhny-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-luhny-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}