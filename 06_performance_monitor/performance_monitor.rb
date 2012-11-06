def measure num=1
  start = Time.now
  num.times do
    yield
  end
  stop = Time.now
  return (stop - start)/num
end
