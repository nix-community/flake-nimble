{
  description = ''Common unicode operations'';
  inputs.src-unicodeplus-v0_3_0.flake = false;
  inputs.src-unicodeplus-v0_3_0.type = "github";
  inputs.src-unicodeplus-v0_3_0.owner = "nitely";
  inputs.src-unicodeplus-v0_3_0.repo = "nim-unicodeplus";
  inputs.src-unicodeplus-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, src-unicodeplus-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodeplus-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unicodeplus-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}