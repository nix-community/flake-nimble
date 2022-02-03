{
  description = ''Porting some Python / Kotlin features to Nim'';
  inputs.src-pykot-v0_1_2.flake = false;
  inputs.src-pykot-v0_1_2.type = "github";
  inputs.src-pykot-v0_1_2.owner = "jabbalaci";
  inputs.src-pykot-v0_1_2.repo = "nimpykot";
  inputs.src-pykot-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-pykot-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pykot-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pykot-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}