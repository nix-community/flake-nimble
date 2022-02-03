{
  description = ''A package manager that delegates to package authors'';
  inputs.src-nimp-v0_1_0.flake = false;
  inputs.src-nimp-v0_1_0.type = "github";
  inputs.src-nimp-v0_1_0.owner = "c-blake";
  inputs.src-nimp-v0_1_0.repo = "nimp";
  inputs.src-nimp-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-nimp-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimp-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimp-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}