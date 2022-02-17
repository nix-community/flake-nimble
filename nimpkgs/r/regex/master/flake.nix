{
  description = ''Linear time regex matching'';
  inputs.src-regex-master.flake = false;
  inputs.src-regex-master.type = "github";
  inputs.src-regex-master.owner = "nitely";
  inputs.src-regex-master.repo = "nim-regex";
  inputs.src-regex-master.ref = "refs/heads/master";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, src-regex-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-regex-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-regex-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}