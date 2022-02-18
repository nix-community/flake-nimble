{
  description = ''Haraka v2 short-input hash function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-haraka-master.flake = false;
  inputs.src-haraka-master.type = "other";
  inputs.src-haraka-master.owner = "~ehmry";
  inputs.src-haraka-master.repo = "nim_haraka";
  inputs.src-haraka-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-haraka-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-haraka-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-haraka-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}