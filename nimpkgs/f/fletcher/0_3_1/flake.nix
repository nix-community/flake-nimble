{
  description = ''Implementation of the Fletcher checksum algorithm.'';
  inputs.src-fletcher-0_3_1.flake = false;
  inputs.src-fletcher-0_3_1.type = "github";
  inputs.src-fletcher-0_3_1.owner = "Akito13";
  inputs.src-fletcher-0_3_1.repo = "nim-fletcher";
  inputs.src-fletcher-0_3_1.ref = "refs/tags/0.3.1";
  
  outputs = { self, nixpkgs, src-fletcher-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fletcher-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fletcher-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}