{
  description = ''A tqdm-style progress bar in Nim'';
  inputs.src-suru-v0_3_1.flake = false;
  inputs.src-suru-v0_3_1.type = "github";
  inputs.src-suru-v0_3_1.owner = "de-odex";
  inputs.src-suru-v0_3_1.repo = "suru";
  inputs.src-suru-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-suru-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suru-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-suru-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}