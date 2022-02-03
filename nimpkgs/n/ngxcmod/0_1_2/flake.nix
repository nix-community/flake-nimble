{
  description = ''High level wrapper for build nginx module w/ nginx-c-function'';
  inputs.src-ngxcmod-0_1_2.flake = false;
  inputs.src-ngxcmod-0_1_2.type = "github";
  inputs.src-ngxcmod-0_1_2.owner = "ba0f3";
  inputs.src-ngxcmod-0_1_2.repo = "ngxcmod.nim";
  inputs.src-ngxcmod-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-ngxcmod-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ngxcmod-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ngxcmod-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}