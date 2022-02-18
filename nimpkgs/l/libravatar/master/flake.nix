{
  description = ''Libravatar library for Nim, Gravatar alternative. Libravatar is an open source free federated avatar api & service.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-libravatar-master.flake = false;
  inputs.src-libravatar-master.type = "github";
  inputs.src-libravatar-master.owner = "juancarlospaco";
  inputs.src-libravatar-master.repo = "nim-libravatar";
  inputs.src-libravatar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libravatar-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libravatar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libravatar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}