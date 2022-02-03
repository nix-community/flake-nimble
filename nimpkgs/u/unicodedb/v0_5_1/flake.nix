{
  description = ''Unicode Character Database (UCD) access for Nim'';
  inputs.src-unicodedb-v0_5_1.flake = false;
  inputs.src-unicodedb-v0_5_1.type = "github";
  inputs.src-unicodedb-v0_5_1.owner = "nitely";
  inputs.src-unicodedb-v0_5_1.repo = "nim-unicodedb";
  inputs.src-unicodedb-v0_5_1.ref = "refs/tags/v0.5.1";
  
  outputs = { self, nixpkgs, src-unicodedb-v0_5_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodedb-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unicodedb-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}