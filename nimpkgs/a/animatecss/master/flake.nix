{
  description = ''Easily use Animate.css classes'';
  inputs.src-animatecss-master.flake = false;
  inputs.src-animatecss-master.type = "github";
  inputs.src-animatecss-master.owner = "thisago";
  inputs.src-animatecss-master.repo = "animatecss";
  inputs.src-animatecss-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-animatecss-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-animatecss-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-animatecss-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}