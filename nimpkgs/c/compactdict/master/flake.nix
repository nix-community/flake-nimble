{
  description = ''A compact dictionary implementation'';
  inputs.src-compactdict-master.flake = false;
  inputs.src-compactdict-master.type = "github";
  inputs.src-compactdict-master.owner = "LemonBoy";
  inputs.src-compactdict-master.repo = "compactdict";
  inputs.src-compactdict-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-compactdict-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compactdict-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-compactdict-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}