{
  description = ''Implementation of the Fletcher checksum algorithm.'';
  inputs.src-fletcher-0_3_0.flake = false;
  inputs.src-fletcher-0_3_0.type = "github";
  inputs.src-fletcher-0_3_0.owner = "Akito13";
  inputs.src-fletcher-0_3_0.repo = "nim-fletcher";
  inputs.src-fletcher-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-fletcher-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fletcher-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fletcher-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}