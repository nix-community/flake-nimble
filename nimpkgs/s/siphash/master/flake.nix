{
  description = ''SipHash, a pseudorandom function optimized for short messages.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-siphash-master.flake = false;
  inputs.src-siphash-master.type = "other";
  inputs.src-siphash-master.owner = "~ehmry";
  inputs.src-siphash-master.repo = "nim_siphash";
  inputs.src-siphash-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-siphash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-siphash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-siphash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}