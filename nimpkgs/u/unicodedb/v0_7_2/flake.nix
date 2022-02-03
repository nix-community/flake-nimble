{
  description = ''Unicode Character Database (UCD) access for Nim'';
  inputs.src-unicodedb-v0_7_2.flake = false;
  inputs.src-unicodedb-v0_7_2.type = "github";
  inputs.src-unicodedb-v0_7_2.owner = "nitely";
  inputs.src-unicodedb-v0_7_2.repo = "nim-unicodedb";
  inputs.src-unicodedb-v0_7_2.ref = "refs/tags/v0.7.2";
  
  outputs = { self, nixpkgs, src-unicodedb-v0_7_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodedb-v0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unicodedb-v0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}