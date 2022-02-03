{
  description = ''Linear time regex matching'';
  inputs.src-regex-v0_7_4.flake = false;
  inputs.src-regex-v0_7_4.type = "github";
  inputs.src-regex-v0_7_4.owner = "nitely";
  inputs.src-regex-v0_7_4.repo = "nim-regex";
  inputs.src-regex-v0_7_4.ref = "refs/tags/v0.7.4";
  
  
  inputs."unicodedb".url = "path:../../../u/unicodedb";
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  
  inputs."unicodeplus".url = "path:../../../u/unicodeplus";
  inputs."unicodeplus".type = "github";
  inputs."unicodeplus".owner = "riinr";
  inputs."unicodeplus".repo = "flake-nimble";
  inputs."unicodeplus".ref = "flake-pinning";
  inputs."unicodeplus".dir = "nimpkgs/u/unicodeplus";

  outputs = { self, nixpkgs, src-regex-v0_7_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-regex-v0_7_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-regex-v0_7_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}