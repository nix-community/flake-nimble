{
  description = ''RIFF file handling for Nim '';
  inputs.src-riff-master.flake = false;
  inputs.src-riff-master.type = "github";
  inputs.src-riff-master.owner = "johnnovak";
  inputs.src-riff-master.repo = "nim-riff";
  inputs.src-riff-master.ref = "refs/heads/master";
  
  
  inputs."binstreams".url = "path:../../../b/binstreams";
  inputs."binstreams".type = "github";
  inputs."binstreams".owner = "riinr";
  inputs."binstreams".repo = "flake-nimble";
  inputs."binstreams".ref = "flake-pinning";
  inputs."binstreams".dir = "nimpkgs/b/binstreams";

  outputs = { self, nixpkgs, src-riff-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-riff-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-riff-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}