{
  description = ''High level wrapper for build nginx module w/ nginx-c-function'';
  inputs.src-ngxcmod-master.flake = false;
  inputs.src-ngxcmod-master.type = "github";
  inputs.src-ngxcmod-master.owner = "ba0f3";
  inputs.src-ngxcmod-master.repo = "ngxcmod.nim";
  inputs.src-ngxcmod-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ngxcmod-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ngxcmod-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ngxcmod-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}