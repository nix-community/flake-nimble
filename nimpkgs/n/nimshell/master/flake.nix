{
  description = ''Library for shell scripting in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimshell-master.flake = false;
  inputs.src-nimshell-master.type = "github";
  inputs.src-nimshell-master.owner = "vegansk";
  inputs.src-nimshell-master.repo = "nimshell";
  inputs.src-nimshell-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimshell-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimshell-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimshell-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}