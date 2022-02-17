{
  description = ''Common unicode operations'';
  inputs.src-unicodeplus-v0_1_1.flake = false;
  inputs.src-unicodeplus-v0_1_1.type = "github";
  inputs.src-unicodeplus-v0_1_1.owner = "nitely";
  inputs.src-unicodeplus-v0_1_1.repo = "nim-unicodeplus";
  inputs.src-unicodeplus-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, src-unicodeplus-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodeplus-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unicodeplus-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}