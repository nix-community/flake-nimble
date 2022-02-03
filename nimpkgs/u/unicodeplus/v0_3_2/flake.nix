{
  description = ''Common unicode operations'';
  inputs.src-unicodeplus-v0_3_2.flake = false;
  inputs.src-unicodeplus-v0_3_2.type = "github";
  inputs.src-unicodeplus-v0_3_2.owner = "nitely";
  inputs.src-unicodeplus-v0_3_2.repo = "nim-unicodeplus";
  inputs.src-unicodeplus-v0_3_2.ref = "refs/tags/v0.3.2";
  
  
  inputs."unicodedb".url = "path:../../../u/unicodedb";
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, src-unicodeplus-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodeplus-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unicodeplus-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}