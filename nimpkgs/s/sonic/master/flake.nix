{
  description = ''client for sonic search backend'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sonic-master.flake = false;
  inputs.src-sonic-master.type = "github";
  inputs.src-sonic-master.owner = "xmonader";
  inputs.src-sonic-master.repo = "nim-sonic-client";
  inputs.src-sonic-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sonic-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sonic-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sonic-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}