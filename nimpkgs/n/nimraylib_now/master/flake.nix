{
  description = ''The Ultimate Raylib gaming library wrapper'';
  inputs.src-nimraylib_now-master.flake = false;
  inputs.src-nimraylib_now-master.type = "github";
  inputs.src-nimraylib_now-master.owner = "greenfork";
  inputs.src-nimraylib_now-master.repo = "nimraylib_now";
  inputs.src-nimraylib_now-master.ref = "refs/heads/master";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-nimraylib_now-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimraylib_now-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimraylib_now-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}