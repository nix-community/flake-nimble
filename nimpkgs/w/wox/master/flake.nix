{
  description = ''Helper library for writing Wox plugins in Nim'';
  inputs.src-wox-master.flake = false;
  inputs.src-wox-master.type = "github";
  inputs.src-wox-master.owner = "roose";
  inputs.src-wox-master.repo = "nim-wox";
  inputs.src-wox-master.ref = "refs/heads/master";
  
  
  inputs."unicodeplus".type = "github";
  inputs."unicodeplus".owner = "riinr";
  inputs."unicodeplus".repo = "flake-nimble";
  inputs."unicodeplus".ref = "flake-pinning";
  inputs."unicodeplus".dir = "nimpkgs/u/unicodeplus";

  outputs = { self, nixpkgs, src-wox-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wox-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wox-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}