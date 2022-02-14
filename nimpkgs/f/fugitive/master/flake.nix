{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';
  inputs.src-fugitive-master.flake = false;
  inputs.src-fugitive-master.type = "github";
  inputs.src-fugitive-master.owner = "haltcase";
  inputs.src-fugitive-master.repo = "fugitive";
  inputs.src-fugitive-master.ref = "refs/heads/master";
  
  
  inputs."gara".url = "path:../../../g/gara";
  inputs."gara".type = "github";
  inputs."gara".owner = "riinr";
  inputs."gara".repo = "flake-nimble";
  inputs."gara".ref = "flake-pinning";
  inputs."gara".dir = "nimpkgs/g/gara";

  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  
  inputs."unpack".url = "path:../../../u/unpack";
  inputs."unpack".type = "github";
  inputs."unpack".owner = "riinr";
  inputs."unpack".repo = "flake-nimble";
  inputs."unpack".ref = "flake-pinning";
  inputs."unpack".dir = "nimpkgs/u/unpack";

  outputs = { self, nixpkgs, src-fugitive-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fugitive-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fugitive-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}