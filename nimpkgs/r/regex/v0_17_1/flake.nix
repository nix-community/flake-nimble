{
  description = ''Linear time regex matching'';
  inputs.src-regex-v0_17_1.flake = false;
  inputs.src-regex-v0_17_1.type = "github";
  inputs.src-regex-v0_17_1.owner = "nitely";
  inputs.src-regex-v0_17_1.repo = "nim-regex";
  inputs.src-regex-v0_17_1.ref = "refs/tags/v0.17.1";
  
  
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

  outputs = { self, nixpkgs, src-regex-v0_17_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-regex-v0_17_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-regex-v0_17_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}