{
  description = ''Unicode Character Database (UCD) access for Nim'';
  inputs.src-unicodedb-v0_4_0.flake = false;
  inputs.src-unicodedb-v0_4_0.type = "github";
  inputs.src-unicodedb-v0_4_0.owner = "nitely";
  inputs.src-unicodedb-v0_4_0.repo = "nim-unicodedb";
  inputs.src-unicodedb-v0_4_0.ref = "refs/tags/v0.4.0";
  
  outputs = { self, nixpkgs, src-unicodedb-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodedb-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unicodedb-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}