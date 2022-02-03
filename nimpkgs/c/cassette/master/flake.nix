{
  description = ''Record and replay your HTTP sessions!'';
  inputs.src-cassette-master.flake = false;
  inputs.src-cassette-master.type = "github";
  inputs.src-cassette-master.owner = "LemonBoy";
  inputs.src-cassette-master.repo = "cassette";
  inputs.src-cassette-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cassette-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cassette-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cassette-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}