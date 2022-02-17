{
  description = ''Asynchronous docker client written by Nim-lang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-asyncdocker-master.flake = false;
  inputs.src-asyncdocker-master.type = "github";
  inputs.src-asyncdocker-master.owner = "tulayang";
  inputs.src-asyncdocker-master.repo = "asyncdocker";
  inputs.src-asyncdocker-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-asyncdocker-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncdocker-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asyncdocker-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}