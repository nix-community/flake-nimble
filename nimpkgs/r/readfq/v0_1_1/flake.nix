{
  description = ''Wrapper for Heng Li's kseq'';
  inputs.src-readfq-v0_1_1.flake = false;
  inputs.src-readfq-v0_1_1.type = "github";
  inputs.src-readfq-v0_1_1.owner = "andreas-wilm";
  inputs.src-readfq-v0_1_1.repo = "nimreadfq";
  inputs.src-readfq-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-readfq-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-readfq-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-readfq-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}