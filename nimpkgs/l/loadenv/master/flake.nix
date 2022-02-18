{
  description = ''load .env variables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-loadenv-master.flake = false;
  inputs.src-loadenv-master.type = "github";
  inputs.src-loadenv-master.owner = "xmonader";
  inputs.src-loadenv-master.repo = "nim-loadenv";
  inputs.src-loadenv-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-loadenv-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loadenv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-loadenv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}