{
  description = ''Wrapper for Heng Li's kseq'';
  inputs.src-readfq-master.flake = false;
  inputs.src-readfq-master.type = "github";
  inputs.src-readfq-master.owner = "andreas-wilm";
  inputs.src-readfq-master.repo = "nimreadfq";
  inputs.src-readfq-master.ref = "refs/heads/master";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-readfq-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-readfq-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-readfq-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}