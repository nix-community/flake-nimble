{
  description = ''Minimalistic libnotify wrapper for desktop notifications'';
  inputs.src-libnotify-master.flake = false;
  inputs.src-libnotify-master.type = "github";
  inputs.src-libnotify-master.owner = "FedericoCeratto";
  inputs.src-libnotify-master.repo = "nim-libnotify";
  inputs.src-libnotify-master.ref = "refs/heads/master";
  
  
  inputs."gtk2".type = "github";
  inputs."gtk2".owner = "riinr";
  inputs."gtk2".repo = "flake-nimble";
  inputs."gtk2".ref = "flake-pinning";
  inputs."gtk2".dir = "nimpkgs/g/gtk2";

  outputs = { self, nixpkgs, src-libnotify-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnotify-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libnotify-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}