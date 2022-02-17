{
  description = ''See pictures in your console'';
  inputs.src-imgcat-master.flake = false;
  inputs.src-imgcat-master.type = "github";
  inputs.src-imgcat-master.owner = "not-lum";
  inputs.src-imgcat-master.repo = "imgcat";
  inputs.src-imgcat-master.ref = "refs/heads/master";
  
  
  inputs."imageman".type = "github";
  inputs."imageman".owner = "riinr";
  inputs."imageman".repo = "flake-nimble";
  inputs."imageman".ref = "flake-pinning";
  inputs."imageman".dir = "nimpkgs/i/imageman";

  
  inputs."argparse".type = "github";
  inputs."argparse".owner = "riinr";
  inputs."argparse".repo = "flake-nimble";
  inputs."argparse".ref = "flake-pinning";
  inputs."argparse".dir = "nimpkgs/a/argparse";

  outputs = { self, nixpkgs, src-imgcat-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imgcat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-imgcat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}