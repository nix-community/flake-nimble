{
  description = ''Unicode Character Database (UCD) access for Nim'';
  inputs.src-unicodedb-v0_2_3.flake = false;
  inputs.src-unicodedb-v0_2_3.type = "github";
  inputs.src-unicodedb-v0_2_3.owner = "nitely";
  inputs.src-unicodedb-v0_2_3.repo = "nim-unicodedb";
  inputs.src-unicodedb-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, src-unicodedb-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodedb-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unicodedb-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}