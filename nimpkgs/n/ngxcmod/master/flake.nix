{
  description = ''High level wrapper for build nginx module w/ nginx-c-function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ngxcmod-master.flake = false;
  inputs.src-ngxcmod-master.type = "github";
  inputs.src-ngxcmod-master.owner = "ba0f3";
  inputs.src-ngxcmod-master.repo = "ngxcmod.nim";
  inputs.src-ngxcmod-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ngxcmod-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ngxcmod-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ngxcmod-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}